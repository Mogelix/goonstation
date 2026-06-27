import { Window } from '../layouts';
import { Box } from '../components';

export const Test = (props, context) => {
  return (
    <Window>
      <Window.Content>
        <Box>Hello World</Box>
      </Window.Content>
    </Window>
  );
};
